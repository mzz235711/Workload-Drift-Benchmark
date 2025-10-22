/*+ HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND pl.LinkTypeId=1 AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.CommentCount>=0 AND p.FavoriteCount<=3 AND u.Views>=0 AND u.DownVotes>=0 AND u.UpVotes=0 AND u.CreationDate>='2010-07-20 01:39:55'::timestamp;

