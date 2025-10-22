/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-13 AND p.Score<65 AND p.CommentCount>3 AND p.CommentCount<38 AND u.DownVotes>720 AND u.DownVotes<1181 AND v.CreationDate>'2009-08-18 15:29:27'::timestamp AND v.CreationDate<'2011-09-16 01:22:02'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<12 AND b.Date>'2013-05-04 22:56:19'::timestamp AND b.Date<'2014-07-24 07:22:47'::timestamp;

