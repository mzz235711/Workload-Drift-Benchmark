/*+ HashJoin(u pl p)
 MergeJoin(pl p)
 IndexScan(u)
 IndexScan(pl)
 IndexScan(p)
 Leading((u (pl p))) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score>=-1 AND p.Score<=26 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.CreationDate>='2010-07-21 16:42:43'::timestamp AND u.Views>=0 AND u.Views<=540 AND u.DownVotes>=0 AND u.DownVotes<=2;

