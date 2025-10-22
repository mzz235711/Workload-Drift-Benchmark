/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-10 AND p.Score<134 AND p.CommentCount>16 AND p.CommentCount<22 AND u.DownVotes>315 AND u.DownVotes<896 AND v.CreationDate>'2010-02-19 07:26:30'::timestamp AND v.CreationDate<'2012-12-22 15:43:41'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2010-08-10 20:27:54'::timestamp AND b.Date<'2013-07-20 22:17:13'::timestamp;

