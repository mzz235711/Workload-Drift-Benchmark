/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>33 AND p.Score<165 AND p.CommentCount>0 AND p.CommentCount<33 AND u.DownVotes>100 AND u.DownVotes<693 AND v.CreationDate>'2009-10-26 10:23:19'::timestamp AND v.CreationDate<'2010-08-21 00:48:33'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2013-02-04 10:34:42'::timestamp AND b.Date<'2014-07-16 09:44:26'::timestamp;

