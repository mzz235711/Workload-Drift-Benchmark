/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<87 AND p.CommentCount>8 AND p.CommentCount<28 AND u.DownVotes>189 AND u.DownVotes<1897 AND v.CreationDate>'2010-10-10 10:03:04'::timestamp AND v.CreationDate<'2011-05-11 01:34:32'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<13 AND b.Date>'2012-02-12 22:31:29'::timestamp AND b.Date<'2012-05-17 06:23:27'::timestamp;

