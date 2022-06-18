(function(window, document) {
    var Cupload = function(options) {

        if (!(this instanceof Cupload)) {
            return new Cupload(options)
        }

        this.localValue = {
            ele: '#cupload',
            name: 'image',
            num: 1,
            width: 48,
            height: 48,
        }

        this.opt = this.extend(this.localValue, options, true)

        this.i = 0;
        this.imageBox = new Array();
        this.imagePreview = new Array();
        this.imageInput = new Array();
        this.imageDelete = new Array();
        this.deleteBtn = new Array();

        if ((typeof options.ele) === "string") {
            this.opt.ele = document.querySelector(options.ele)
        } else {
            this.opt.ele = options.ele
        }

        this.initDom();
    }

    Cupload.prototype = {
        constructor: this,
        initDom: function() {
            this.cteateImageList()
            this.createUploadBox()
            if (this.opt.data) {
                this.showImagePreview()
            }
        },

        extend: function(o, n, override) {
            for (var key in n) {
                if (n.hasOwnProperty(key) && (!o.hasOwnProperty(key) || override)) {
                    o[key] = n[key]
                }
            }
            return o
        },

        cteateImageList: function() {
            this.imageList = document.createElement('ul')
            this.imageList.className = 'cupload-image-list'
            this.imageList.style.margin = 0
            this.imageList.style.padding = 0
            this.imageList.style.display = 'inline'
            this.imageList.style.verticalAlign = 'top'
            this.imageList.style.minHeight = this.opt.height
            this.opt.ele.appendChild(this.imageList)
        },

        createUploadBox: function() {
            this.uploadBox = document.createElement('div')
            this.uploadBox.className = 'cupload-upload-box'
            this.uploadBox.style.position = 'relative'
            this.uploadBox.style.display = 'inline-block'
            this.uploadBox.style.textAlign = 'center'
            this.uploadBox.style.backgroundColor = '#fbfdff'
            this.uploadBox.style.border = '1px dashed #c0ccda'
            this.uploadBox.style.borderRadius = '6px'
            this.uploadBox.style.WebkitBoxSizing = 'border-box'
            this.uploadBox.style.boxSizing = 'border-box'
            this.uploadBox.style.width = this.opt.width + 'px'
            this.uploadBox.style.height = this.opt.height + 'px'
            this.uploadBox.style.lineHeight = this.opt.height - 2 + 'px'
            this.opt.ele.appendChild(this.uploadBox)
            this.createUploadBtn()
            this.createUploadInput()
            var _this = this
            this.uploadBox.onmouseover = function() {
                _this.uploadBox.style.borderColor = '#409eff'
            }
            this.uploadBox.onmouseout = function() {
                _this.uploadBox.style.borderColor = '#c0ccda'
            }
        },

        createUploadBtn: function() {
            this.uploadBtn = document.createElement('span')
            this.uploadBtn.className = 'cupload-upload-btn'
            this.uploadBtn.style.fontSize = '28px'
            this.uploadBtn.style.color = '#8c939d'
            this.uploadBtn.innerHTML = '+'
            this.uploadBox.appendChild(this.uploadBtn)
        },

        createUploadInput: function() {
            this.uploadInput = document.createElement('input')
            this.uploadInput.className = 'cupload-upload-input'
            this.uploadInput.style.position = 'absolute'
            this.uploadInput.style.top = 0
            this.uploadInput.style.right = 0
            this.uploadInput.style.width = '100%'
            this.uploadInput.style.height = '100%'
            this.uploadInput.style.opacity = 0
            this.uploadInput.style.cursor = 'pointer'
            this.uploadInput.type = 'file'
            this.uploadInput.multiple = 'multiple'
            this.uploadInput.accept = 'image/'
            this.uploadInput.title = ''
            this.uploadBox.appendChild(this.uploadInput)
            var _this = this
            this.uploadInput.onchange = function() {
                _this.removeUploadBox()
                _this.uploadImage()
            }
        },

        uploadImage: function() {
            var file = this.uploadInput.files[0]
            this.createUploadBox()
            if (!file || this.limitedSize(file)) {
                return false;
            }
            var reader = new FileReader();
            var _this = this
            reader.onload = function(e) {
                _this.limitedWidthAndHeight(e.target.result, file.name)
            }
            reader.readAsDataURL(file);
        },

        limitedSize: function(file) {
            if (this.opt.minSize && file.size < this.opt.minSize * 1024) {
                alert('图片大小未到最小限制')
                return true
            }
            if (this.opt.maxSize && file.size > this.opt.maxSize * 1024) {
                alert('图片大小超出最大限制')
                return true
            }
            if (this.opt.limitedSize && file.size > this.opt.limitedSize * 1024) {
                alert('图片大小不符合要求')
                return true
            }
            return false
        },

        limitedWidthAndHeight: function(src, name) {
            var tempImage = new Image()
            tempImage.src = src
            var _this = this
            tempImage.onload = function() {
                if (_this.opt.minWidth && this.width < _this.opt.minWidth) {
                    alert('图片宽度未到最小限制')
                    return false
                }
                if (_this.opt.minHeight && this.height < _this.opt.minHeight) {
                    alert('图片高度未到最小限制')
                    return false
                }
                if (_this.opt.maxWidth && this.width > _this.opt.maxWidth) {
                    alert('图片宽度超出最大限制')
                    return false
                }
                if (_this.opt.maxHeight && this.height > _this.opt.maxHeight) {
                    alert('图片高度超出最大限制')
                    return false
                }
                if (_this.opt.limitedWidth && this.width != _this.opt.limitedWidth) {
                    alert('图片宽度不符合要求')
                    return false
                }
                if (_this.opt.limitedHeight && this.height != _this.opt.limitedHeight) {
                    alert('图片高度不符合要求')
                    return false
                }
                _this.foreachNum(src, name, this.width, this.height)
            }
        },

        foreachNum: function(src, name, width, height) {
            this.createImageBox(src, name, width, height)
            if (this.imageList.children.length >= this.opt.num) {
                this.removeUploadBox()
            }
        },

        createImageBox: function(src, name, width, height, state = true) {
            this.imageBox[this.i] = document.createElement('li')
            this.imageBox[this.i].className = 'cupload-image-box'
            this.imageBox[this.i].style.position = 'relative'
            this.imageBox[this.i].style.display = 'inline-block'
            this.imageBox[this.i].style.margin = '0 8px 8px 0'
            this.imageBox[this.i].style.backgroundColor = '#fbfdff'
            this.imageBox[this.i].style.border = '1px solid #c0ccda'
            this.imageBox[this.i].style.borderRadius = '6px'
            this.imageBox[this.i].style.WebkitBoxSizing = 'border-box'
            this.imageBox[this.i].style.boxSizing = 'border-box'
            this.imageBox[this.i].style.width = this.opt.width + 'px'
            this.imageBox[this.i].style.height = this.opt.height + 'px'
            this.imageList.appendChild(this.imageBox[this.i])
            this.createImagePreview(src, width, height)
            this.createImageInput(src)
            this.createImageDelete(name)
            if (!state) {
                this.setDefaultImage()
            }
            var _this = this
            for (var m = 0; m <= this.i; m++) {
                this.imageBox[m].index = m
                this.imageBox[m].onmouseover = function(n) {
                    return function() {
                        _this.showImageDelete(n)
                    }
                }(m)

                this.imageBox[m].onmouseout = function(n) {
                    return function() {
                        _this.hideImageDelete(n)
                    }
                }(m)
            }
            this.i++
        },

        createImagePreview: function(src, width, height) {
            this.imagePreview[this.i] = document.createElement('img')
            this.imagePreview[this.i].className = 'cupload-image-preview'
            this.imagePreview[this.i].style.position = 'absolute'
            this.imagePreview[this.i].style.top = 0
            this.imagePreview[this.i].style.left = 0
            this.imagePreview[this.i].style.right = 0
            this.imagePreview[this.i].style.bottom = 0
            this.imagePreview[this.i].style.margin = 'auto'
            this.imagePreview[this.i].src = src
            this.setImageAttribute(width, height)
            this.imageBox[this.i].appendChild(this.imagePreview[this.i])
        },

        createImageInput: function(src) {
            this.imageInput[this.i] = document.createElement('input')
            this.imageInput[this.i].type = 'hidden'
            this.imageInput[this.i].name = this.opt.name + '[]'
            this.imageInput[this.i].value = src
            this.imageBox[this.i].appendChild(this.imageInput[this.i])
        },

        createImageDelete: function(name) {
            this.imageDelete[this.i] = document.createElement('div')
            this.imageDelete[this.i].className = 'cupload-image-delete'
            this.imageDelete[this.i].style.position = 'absolute'
            this.imageDelete[this.i].style.width = '100%'
            this.imageDelete[this.i].style.height = '100%'
            this.imageDelete[this.i].style.left = 0
            this.imageDelete[this.i].style.top = 0
            this.imageDelete[this.i].style.textAlign = 'center'
            this.imageDelete[this.i].style.color = '#fff'
            this.imageDelete[this.i].style.opacity = 0
            this.imageDelete[this.i].style.backgroundColor = 'rgba(0,0,0,.5)'
            this.imageDelete[this.i].style.WebkitTransition = '.3s'
            this.imageDelete[this.i].style.transition = '.3s'
            this.imageDelete[this.i].title = name
            this.imageBox[this.i].appendChild(this.imageDelete[this.i])
            this.createDeleteBtn()
        },

        createDeleteBtn: function() {
            this.deleteBtn[this.i] = document.createElement('span')
            this.deleteBtn[this.i].className = 'cupload-delete-btn'
            this.deleteBtn[this.i].style.position = 'absolute'
            this.deleteBtn[this.i].style.top = 0
            this.deleteBtn[this.i].style.right = 0
            this.deleteBtn[this.i].style.margin = 0
            this.deleteBtn[this.i].style.padding = 0
            this.deleteBtn[this.i].style.fontSize = '18px'
            this.deleteBtn[this.i].style.width = '24px'
            this.deleteBtn[this.i].style.height = '24px'
            this.deleteBtn[this.i].style.cursor = 'pointer'
            this.deleteBtn[this.i].innerHTML = '×'
            this.deleteBtn[this.i].title = ''
            this.imageDelete[this.i].appendChild(this.deleteBtn[this.i])
            var _this = this
            for (var m = 0; m <= this.i; m++) {
                this.deleteBtn[m].onclick = function(n) {
                    return function() {
                        _this.deleteImage(n)
                    }
                }(m)
            }
        },

        setDefaultImage: function() {
            this.imageBox[this.i].style.backgroundColor = "black"
            this.imageDelete[this.i].title = '图片不存在'
            this.imagePreview[this.i].src = '' 
            	if (130 / this.opt.width > 105 / this.opt.height) {
                this.imagePreview[this.i].style.width = this.opt.width - 2 + 'px'
                this.imagePreview[this.i].style.height = 105 / (130 / this.opt.width) - 2 + 'px'
            } else {
                this.imagePreview[this.i].style.width = 130 / (105 / this.opt.height) - 2 + 'px'
                this.imagePreview[this.i].style.height = this.opt.height - 2 + 'px'
            }
        },

        setImageAttribute: function(width, height) {
            if (width / this.opt.width > height / this.opt.height) {
                this.imagePreview[this.i].style.width = this.opt.width - 2 + 'px'
                this.imagePreview[this.i].style.height = height / (width / this.opt.width) - 2 + 'px'
            } else {
                this.imagePreview[this.i].style.width = width / (height / this.opt.height) - 2 + 'px'
                this.imagePreview[this.i].style.height = this.opt.height - 2 + 'px'
            }
        },

        showImagePreview: function() {
            var obj = this.opt.data
            if (obj.length >= this.opt.num) {
                this.removeUploadBox()
            }
            var _this = this
            var tempImage = new Image()
            tempImage.src = obj[this.i]
            tempImage.onload = function() {
                _this.createImageBox(obj[_this.i], obj[_this.i], this.width, this.height)
                setTimeout(function() {
                    if (obj[_this.i]) {
                        _this.showImagePreview()
                    }
                }, 0);
            }
            tempImage.onerror = function() {
                _this.createImageBox(obj[_this.i], obj[_this.i], 0, 0, false)
                setTimeout(function() {
                    if (obj[_this.i]) {
                        _this.showImagePreview()
                    }
                }, 0);
            }
        },

        deleteImage: function(n) {
            this.imageBox[n].remove()
            this.removeUploadBox()
            if (this.imageList.children.length < this.opt.num) {
                this.createUploadBox()
            }
        },

        removeUploadBox: function() {
            this.uploadBox.remove()
        },

        showImageDelete: function(m) {
            this.imageDelete[m].style.opacity = 1
        },

        hideImageDelete: function(m) {
            this.imageDelete[m].style.opacity = 0
        },
    }

    window.Cupload = Cupload;
})(window, document)