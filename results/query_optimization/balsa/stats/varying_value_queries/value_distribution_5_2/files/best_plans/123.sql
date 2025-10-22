/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<70 AND p.CommentCount>16 AND p.CommentCount<24 AND u.DownVotes>183 AND u.DownVotes<561 AND v.CreationDate>'2009-09-16 12:17:52'::timestamp AND v.CreationDate<'2013-11-12 15:50:33'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<14 AND b.Date>'2012-05-20 02:11:33'::timestamp AND b.Date<'2012-09-16 21:41:03'::timestamp;

