/*+ NestLoop(u b p v)
 NestLoop(u b p)
 NestLoop(u b)
 IndexScan(u)
 IndexScan(b)
 IndexScan(p)
 IndexScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<147 AND p.CommentCount>2 AND p.CommentCount<16 AND u.DownVotes>265 AND u.DownVotes<732 AND v.CreationDate>'2011-04-22 23:20:56'::timestamp AND v.CreationDate<'2013-02-27 23:55:03'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<12 AND b.Date>'2013-06-14 20:27:23'::timestamp AND b.Date<'2014-04-29 20:24:18'::timestamp;

