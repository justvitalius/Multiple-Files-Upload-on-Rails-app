# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#fileupload').fileupload()

jQuery ->
  # обработчик по нажатию на кнопку добавить картинку
  $("#fileupload").delegate( ".insert button", "click", (e)->
    e.preventDefault()

    # копируем линк к загруженной картинке.
    # плагин jquery uploader после загрузки вставляет в превью линк к оригинальному изображению.
    # структура нахождения этой превью-картинки полностью зависит от tmpl шаблона
    link_to_img = $(@).parent().siblings(".preview").children("a").attr("href")

    # структура картиночного тега в стиле markdown
    mrkdwn_text = "\n\n![Alt text](#{link_to_img}) Optional title\n\n"

    current_text = $('textarea').val()
    output_text = current_text + mrkdwn_text
    $('textarea').val(output_text)
    false
  )


