/*+ HashJoin(b u p pl)
 HashJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=2816 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.CreationDate<='2014-09-02 17:08:48'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0 AND u.UpVotes<=109 AND u.CreationDate<='2014-08-13 13:39:19'::timestamp AND b.Date<='2014-09-01 22:38:33'::timestamp;

