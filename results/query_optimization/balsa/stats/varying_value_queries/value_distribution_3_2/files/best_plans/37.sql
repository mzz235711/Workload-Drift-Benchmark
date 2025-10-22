/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<88 AND p.CommentCount>10 AND p.CommentCount<40 AND u.DownVotes>234 AND u.DownVotes<1195 AND v.CreationDate>'2011-09-01 08:39:35'::timestamp AND v.CreationDate<'2013-06-24 21:21:12'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<12 AND b.Date>'2010-12-01 01:30:59'::timestamp AND b.Date<'2011-08-29 18:23:55'::timestamp;

