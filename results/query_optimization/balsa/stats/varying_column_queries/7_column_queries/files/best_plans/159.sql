/*+ NestLoop(p pl u)
 HashJoin(p pl)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(u)
 Leading(((p pl) u)) */
SELECT COUNT(*) FROM posts as p, postLinks as pl, users as u WHERE p.Id = pl.PostId AND p.OwnerUserId = u.Id AND p.Score=0 AND p.AnswerCount>=0 AND p.AnswerCount<=14 AND p.CommentCount>=0 AND p.CommentCount<=9 AND u.DownVotes>=0 AND u.DownVotes<=1;

