/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>25 AND p.Score<55 AND p.CommentCount>16 AND p.CommentCount<34 AND u.DownVotes>126 AND u.DownVotes<789 AND v.CreationDate>'2009-06-13 03:23:50'::timestamp AND v.CreationDate<'2013-07-02 23:03:03'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<10 AND b.Date>'2013-12-23 00:17:17'::timestamp AND b.Date<'2014-07-22 09:46:51'::timestamp;

