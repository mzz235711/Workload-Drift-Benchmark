/*+ NestLoop(u b p v)
 NestLoop(u b p)
 NestLoop(u b)
 IndexScan(u)
 IndexScan(b)
 IndexScan(p)
 IndexScan(v)
 Leading((((u b) p) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<63 AND p.CommentCount>10 AND p.CommentCount<29 AND u.DownVotes>669 AND u.DownVotes<946 AND v.CreationDate>'2013-04-01 01:21:18'::timestamp AND v.CreationDate<'2014-07-10 11:53:01'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<15 AND b.Date>'2010-11-29 20:01:47'::timestamp AND b.Date<'2011-06-19 18:57:05'::timestamp;

