/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>20 AND p.Score<67 AND p.CommentCount>7 AND p.CommentCount<41 AND u.DownVotes>156 AND u.DownVotes<650 AND v.CreationDate>'2010-06-14 08:31:06'::timestamp AND v.CreationDate<'2013-11-16 17:17:48'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2014-04-13 10:10:01'::timestamp AND b.Date<'2014-07-07 12:50:43'::timestamp;

