/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.PostTypeId=1 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.FavoriteCount=0 AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=148 AND u.DownVotes>=0 AND u.CreationDate>='2011-05-28 10:52:32'::timestamp;

