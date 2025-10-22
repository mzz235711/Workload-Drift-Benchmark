/*+ HashJoin(v p b u)
 HashJoin(b u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 SeqScan(b)
 IndexScan(u)
 Leading(((v p) (b u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<29 AND p.CommentCount>4 AND p.CommentCount<35 AND u.DownVotes>123 AND u.DownVotes<1073 AND v.CreationDate>'2009-09-29 12:30:31'::timestamp AND v.CreationDate<'2014-03-24 11:45:27'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<13 AND b.Date>'2011-10-06 04:18:02'::timestamp AND b.Date<'2014-05-24 08:37:37'::timestamp;

