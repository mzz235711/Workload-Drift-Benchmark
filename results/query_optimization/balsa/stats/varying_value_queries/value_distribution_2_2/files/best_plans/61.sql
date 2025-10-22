/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>16 AND p.Score<142 AND p.CommentCount>5 AND p.CommentCount<26 AND u.DownVotes>4 AND u.DownVotes<1332 AND v.CreationDate>'2012-09-29 07:11:40'::timestamp AND v.CreationDate<'2014-04-20 14:06:16'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<10 AND b.Date>'2013-03-02 08:01:43'::timestamp AND b.Date<'2013-05-30 05:07:47'::timestamp;

