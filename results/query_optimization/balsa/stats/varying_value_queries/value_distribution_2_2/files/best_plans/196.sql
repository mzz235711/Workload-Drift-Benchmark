/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>4 AND p.Score<148 AND p.CommentCount>1 AND p.CommentCount<16 AND u.DownVotes>211 AND u.DownVotes<842 AND v.CreationDate>'2012-03-23 21:31:43'::timestamp AND v.CreationDate<'2014-01-19 00:24:00'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2011-11-06 09:55:38'::timestamp AND b.Date<'2013-01-02 09:35:56'::timestamp;

