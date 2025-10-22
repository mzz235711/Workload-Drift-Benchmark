/*+ HashJoin(v p b u)
 HashJoin(b u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 SeqScan(b)
 IndexScan(u)
 Leading(((v p) (b u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<33 AND p.CommentCount>3 AND p.CommentCount<18 AND u.DownVotes>276 AND u.DownVotes<1618 AND v.CreationDate>'2010-03-28 23:59:32'::timestamp AND v.CreationDate<'2011-07-08 22:10:00'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<6 AND b.Date>'2012-04-01 01:42:53'::timestamp AND b.Date<'2014-04-11 12:13:03'::timestamp;

