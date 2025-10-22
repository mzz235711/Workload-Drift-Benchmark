/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<25 AND p.CommentCount>2 AND p.CommentCount<14 AND u.DownVotes>137 AND u.DownVotes<962 AND v.CreationDate>'2012-02-10 10:08:21'::timestamp AND v.CreationDate<'2013-11-06 16:24:09'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2014-05-18 22:28:14'::timestamp AND b.Date<'2014-07-23 15:45:58'::timestamp;

