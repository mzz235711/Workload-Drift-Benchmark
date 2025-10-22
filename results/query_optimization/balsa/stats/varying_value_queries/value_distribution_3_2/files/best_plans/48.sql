/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>59 AND p.Score<149 AND p.CommentCount>3 AND p.CommentCount<14 AND u.DownVotes>30 AND u.DownVotes<928 AND v.CreationDate>'2010-02-26 06:09:52'::timestamp AND v.CreationDate<'2010-12-16 22:06:11'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<10 AND b.Date>'2012-05-18 01:12:29'::timestamp AND b.Date<'2013-04-22 19:24:25'::timestamp;

