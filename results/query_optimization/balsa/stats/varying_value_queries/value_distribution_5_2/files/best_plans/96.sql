/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>56 AND p.Score<91 AND p.CommentCount>3 AND p.CommentCount<14 AND u.DownVotes>89 AND u.DownVotes<906 AND v.CreationDate>'2012-09-02 22:23:12'::timestamp AND v.CreationDate<'2014-04-01 10:31:03'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2011-12-03 06:35:14'::timestamp AND b.Date<'2012-08-26 00:39:08'::timestamp;

