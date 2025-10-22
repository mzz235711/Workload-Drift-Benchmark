/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>22 AND p.Score<170 AND p.CommentCount>0 AND p.CommentCount<40 AND u.DownVotes>84 AND u.DownVotes<858 AND v.CreationDate>'2009-10-03 15:20:40'::timestamp AND v.CreationDate<'2013-10-21 13:35:29'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<6 AND b.Date>'2011-02-09 13:45:07'::timestamp AND b.Date<'2013-09-05 23:09:26'::timestamp;

