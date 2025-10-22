/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<22 AND p.CommentCount>17 AND p.CommentCount<31 AND u.DownVotes>698 AND u.DownVotes<879 AND v.CreationDate>'2013-07-09 14:31:47'::timestamp AND v.CreationDate<'2014-08-26 08:23:29'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2013-06-03 21:23:56'::timestamp AND b.Date<'2014-06-07 08:55:03'::timestamp;

