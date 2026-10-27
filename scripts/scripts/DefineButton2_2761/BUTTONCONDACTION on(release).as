on(release){
   if(_parent.knockup > 0.6)
   {
      _parent.knockup -= 0.1;
      _parent.knockback -= 0.1;
      knocka = _parent.knockup;
   }
}
