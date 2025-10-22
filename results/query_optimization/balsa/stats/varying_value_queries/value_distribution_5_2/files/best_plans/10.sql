/*+ NestLoop(p u b v)
 NestLoop(p u b)
 NestLoop(p u)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 IndexScan(v)
 Leading((((p u) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<142 AND p.CommentCount>3 AND p.CommentCount<37 AND u.DownVotes>262 AND u.DownVotes<530 AND v.CreationDate>'2009-05-02 14:01:26'::timestamp AND v.CreationDate<'2012-04-26 00:37:05'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<12 AND b.Date>'2013-07-02 05:51:18'::timestamp AND b.Date<'2014-03-20 13:14:16'::timestamp;

