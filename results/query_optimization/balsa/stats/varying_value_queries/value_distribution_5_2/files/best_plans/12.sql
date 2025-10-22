/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>42 AND p.Score<155 AND p.CommentCount>1 AND p.CommentCount<38 AND u.DownVotes>1 AND u.DownVotes<598 AND v.CreationDate>'2011-02-07 23:55:47'::timestamp AND v.CreationDate<'2012-05-26 17:48:04'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<8 AND b.Date>'2013-02-10 14:11:44'::timestamp AND b.Date<'2013-04-01 11:39:33'::timestamp;

