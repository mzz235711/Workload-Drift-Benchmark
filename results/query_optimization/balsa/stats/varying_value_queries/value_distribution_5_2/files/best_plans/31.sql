/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<40 AND p.CommentCount>0 AND p.CommentCount<24 AND u.DownVotes>378 AND u.DownVotes<1656 AND v.CreationDate>'2012-01-14 21:43:54'::timestamp AND v.CreationDate<'2014-07-02 11:06:30'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2011-12-10 01:21:15'::timestamp AND b.Date<'2012-01-05 12:33:38'::timestamp;

