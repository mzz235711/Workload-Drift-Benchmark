/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 IndexScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<157 AND p.CommentCount>6 AND p.CommentCount<24 AND u.DownVotes>120 AND u.DownVotes<1679 AND v.CreationDate>'2009-09-03 12:17:41'::timestamp AND v.CreationDate<'2012-02-29 13:21:09'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<8 AND b.Date>'2010-12-08 14:41:54'::timestamp AND b.Date<'2013-01-14 17:20:57'::timestamp;

