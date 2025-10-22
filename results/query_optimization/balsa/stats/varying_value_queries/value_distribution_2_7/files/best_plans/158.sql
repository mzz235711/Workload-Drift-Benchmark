/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<173 AND p.CommentCount>4 AND p.CommentCount<27 AND u.DownVotes>606 AND u.DownVotes<1742 AND v.CreationDate>'2009-02-05 20:41:11'::timestamp AND v.CreationDate<'2014-09-04 05:55:09'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<10 AND b.Date>'2011-07-28 21:01:33'::timestamp AND b.Date<'2012-04-27 17:09:30'::timestamp;

