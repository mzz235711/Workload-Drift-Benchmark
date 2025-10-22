/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>21 AND p.Score<107 AND p.CommentCount>6 AND p.CommentCount<33 AND u.DownVotes>253 AND u.DownVotes<820 AND v.CreationDate>'2012-06-17 04:18:54'::timestamp AND v.CreationDate<'2014-03-16 08:00:57'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2012-10-16 16:43:32'::timestamp AND b.Date<'2014-08-06 03:30:36'::timestamp;

