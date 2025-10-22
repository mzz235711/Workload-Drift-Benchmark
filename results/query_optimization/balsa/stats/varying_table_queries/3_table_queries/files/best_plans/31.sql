/*+ MergeJoin(pl p u)
 HashJoin(p u)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((pl (p u))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=2 AND p.CommentCount=3 AND p.FavoriteCount=1 AND pl.CreationDate>='2011-11-02 10:57:03'::timestamp AND pl.CreationDate<='2014-08-15 10:43:50'::timestamp AND u.Reputation=13;

