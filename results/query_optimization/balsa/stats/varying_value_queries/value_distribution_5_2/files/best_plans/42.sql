/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<53 AND p.CommentCount>13 AND p.CommentCount<44 AND u.DownVotes>77 AND u.DownVotes<1338 AND v.CreationDate>'2012-03-29 15:26:31'::timestamp AND v.CreationDate<'2014-04-09 17:26:57'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<12 AND b.Date>'2012-10-02 03:49:51'::timestamp AND b.Date<'2014-03-14 23:04:17'::timestamp;

