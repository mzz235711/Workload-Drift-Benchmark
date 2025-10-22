/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<108 AND p.CommentCount>4 AND p.CommentCount<27 AND u.DownVotes>453 AND u.DownVotes<1016 AND v.CreationDate>'2012-07-14 00:21:46'::timestamp AND v.CreationDate<'2014-07-02 02:52:12'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<7 AND b.Date>'2011-01-03 13:36:14'::timestamp AND b.Date<'2011-08-15 13:38:29'::timestamp;

