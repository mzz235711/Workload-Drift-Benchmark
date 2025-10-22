/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<75 AND p.CommentCount>10 AND p.CommentCount<39 AND u.DownVotes>3 AND u.DownVotes<1599 AND v.CreationDate>'2009-03-13 21:39:44'::timestamp AND v.CreationDate<'2012-12-09 17:55:19'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<3 AND b.Date>'2011-06-02 08:25:22'::timestamp AND b.Date<'2012-04-11 15:32:36'::timestamp;

