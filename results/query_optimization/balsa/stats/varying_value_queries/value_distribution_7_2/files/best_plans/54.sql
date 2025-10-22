/*+ NestLoop(u v p b)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(b)
 Leading(((u (v p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>89 AND p.Score<187 AND p.CommentCount>10 AND p.CommentCount<35 AND u.DownVotes>117 AND u.DownVotes<1019 AND v.CreationDate>'2013-05-26 23:16:47'::timestamp AND v.CreationDate<'2013-09-04 05:30:58'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2012-01-04 17:28:36'::timestamp AND b.Date<'2012-12-08 18:22:49'::timestamp;

