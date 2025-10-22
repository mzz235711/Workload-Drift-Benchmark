/*+ HashJoin(v p u b)
 MergeJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-7 AND p.Score<125 AND p.CommentCount>10 AND p.CommentCount<40 AND u.DownVotes>656 AND u.DownVotes<990 AND v.CreationDate>'2009-11-23 18:35:21'::timestamp AND v.CreationDate<'2013-04-02 01:55:44'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2011-12-02 01:21:47'::timestamp AND b.Date<'2012-10-08 19:57:12'::timestamp;

