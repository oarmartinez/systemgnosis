module.exports = {
    isLoggedInd(req,res,next){
        if (req.isAuthenticated()) {
            return next();
        }
        return res.redirect('/');
    }
}