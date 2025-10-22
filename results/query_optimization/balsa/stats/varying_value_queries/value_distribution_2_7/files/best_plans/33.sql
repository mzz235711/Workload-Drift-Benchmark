/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<92 AND p.CommentCount>0 AND p.CommentCount<15 AND u.DownVotes>701 AND u.DownVotes<1278 AND v.CreationDate>'2009-12-15 15:43:30'::timestamp AND v.CreationDate<'2013-10-01 20:29:04'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2012-07-02 13:07:28'::timestamp AND b.Date<'2013-12-24 14:48:52'::timestamp;

