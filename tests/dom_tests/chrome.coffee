#
# Mock the Chrome extension API.
#

root = exports ? window

root.chrome = {
  runtime: {
    connect: -> {
      onMessage: {
        addListener: ->
      }
      onDisconnect: {
        addListener: ->
      }
      postMessage: ->
    }
    onMessage: {
      addListener: ->
    }
    sendMessage: ->
    getManifest: ->
    getURL: (url) -> "../../#{url}"
  }
  storage:
    local:
      get: ->
      set: ->
}
