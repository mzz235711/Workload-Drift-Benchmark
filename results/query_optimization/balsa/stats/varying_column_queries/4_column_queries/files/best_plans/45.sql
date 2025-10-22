/*+ HashJoin(b u p pl)
 MergeJoin(u p pl)
 MergeJoin(p pl)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 IndexScan(pl)
 Leading((b (u (p pl)))) */
SELECT COUNT(*) FROM postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.AnswerCount>=0 AND p.CommentCount<=10 AND p.CreationDate<='2014-09-02 23:55:31'::timestamp AND u.DownVotes>=0;

