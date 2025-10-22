/*+ NestLoop(v u p b)
 MergeJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<103 AND p.CommentCount>17 AND p.CommentCount<44 AND u.DownVotes>127 AND u.DownVotes<1381 AND v.CreationDate>'2010-02-07 09:18:59'::timestamp AND v.CreationDate<'2012-10-29 18:49:14'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2012-05-18 02:31:14'::timestamp AND b.Date<'2012-07-26 05:21:23'::timestamp;

