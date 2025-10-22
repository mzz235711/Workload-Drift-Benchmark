/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>85 AND p.Score<146 AND p.CommentCount>0 AND p.CommentCount<42 AND u.DownVotes>74 AND u.DownVotes<362 AND v.CreationDate>'2009-07-06 23:07:36'::timestamp AND v.CreationDate<'2012-06-02 21:10:23'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2013-09-17 17:45:38'::timestamp AND b.Date<'2013-12-14 17:04:20'::timestamp;

