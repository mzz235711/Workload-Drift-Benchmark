/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<57 AND p.CommentCount>0 AND p.CommentCount<30 AND u.DownVotes>768 AND u.DownVotes<1489 AND v.CreationDate>'2010-05-03 15:00:18'::timestamp AND v.CreationDate<'2014-04-08 18:17:31'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<12 AND b.Date>'2012-07-15 12:04:32'::timestamp AND b.Date<'2013-01-07 18:27:30'::timestamp;

