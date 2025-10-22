/*+ MergeJoin(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 SeqScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>101 AND p.Score<171 AND p.CommentCount>0 AND p.CommentCount<41 AND u.DownVotes>269 AND u.DownVotes<858 AND v.CreationDate>'2011-01-29 19:26:05'::timestamp AND v.CreationDate<'2013-09-17 21:24:49'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-01-04 06:50:29'::timestamp AND b.Date<'2011-07-09 01:14:41'::timestamp;

