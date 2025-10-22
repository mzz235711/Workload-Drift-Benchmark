/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<56 AND p.CommentCount>5 AND p.CommentCount<34 AND u.DownVotes>506 AND u.DownVotes<911 AND v.CreationDate>'2011-09-02 17:51:36'::timestamp AND v.CreationDate<'2013-04-14 23:16:06'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<13 AND b.Date>'2010-08-18 18:52:10'::timestamp AND b.Date<'2014-02-05 05:27:59'::timestamp;

