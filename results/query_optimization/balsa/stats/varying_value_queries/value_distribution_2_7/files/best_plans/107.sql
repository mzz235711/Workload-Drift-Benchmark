/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<44 AND p.CommentCount>11 AND p.CommentCount<29 AND u.DownVotes>365 AND u.DownVotes<1205 AND v.CreationDate>'2009-08-13 02:44:09'::timestamp AND v.CreationDate<'2013-12-07 16:59:34'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<12 AND b.Date>'2012-08-31 09:42:27'::timestamp AND b.Date<'2014-01-17 08:26:49'::timestamp;

