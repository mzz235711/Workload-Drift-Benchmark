/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<104 AND p.CommentCount>8 AND p.CommentCount<18 AND u.DownVotes>199 AND u.DownVotes<969 AND v.CreationDate>'2014-01-19 22:52:18'::timestamp AND v.CreationDate<'2014-06-25 23:31:18'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<14 AND b.Date>'2013-05-08 01:24:16'::timestamp AND b.Date<'2013-09-20 21:01:25'::timestamp;

