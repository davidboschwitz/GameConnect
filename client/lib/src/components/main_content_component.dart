part of game_connect_client.src.game_connect_client_component;

var mainContentComponent =
    react.registerComponent(() => new _MainContentComponent());

class _MainContentComponent
  extends flux.FluxComponent<GameConnectClientActions, GameConnectClientStores> {



  List <flux.Store> redrawOn() => [store.gameConnectClientStore];


  getCurrentComponent() {

    var currentComponent;

    switch (store.gameConnectClientStore.currentComponent) {
      case 'pairingScreenComponent':
        currentComponent = pairingScreenComponent({'actions':actions, 'store':store});
        break;
      case 'levelSelectScreenComponent':
        currentComponent = leveSelectScreenComponent({'actions':actions, 'store':store});
        break;
      default:
        currentComponent = react.div({},"There was an error.  I'm not blaming anyone.  I'm just saying a problem exists.");
    }

    return currentComponent;
  }

  render() => react.div({'className': 'pairing-screen-container'}, getCurrentComponent());
}
