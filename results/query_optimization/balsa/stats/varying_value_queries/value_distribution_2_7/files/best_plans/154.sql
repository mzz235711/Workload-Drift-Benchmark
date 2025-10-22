/*+ HashJoin(v p u b)
 HashJoin(p u b)
 NestLoop(u b)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 IndexScan(b)
 Leading((v (p (u b)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>44 AND p.Score<165 AND p.CommentCount>1 AND p.CommentCount<40 AND u.DownVotes>642 AND u.DownVotes<1918 AND v.CreationDate>'2013-03-27 05:38:51'::timestamp AND v.CreationDate<'2014-04-12 04:33:31'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<9 AND b.Date>'2011-08-22 16:28:12'::timestamp AND b.Date<'2012-10-24 09:52:07'::timestamp;

