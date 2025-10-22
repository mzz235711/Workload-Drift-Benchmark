/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>54 AND p.Score<158 AND p.CommentCount>3 AND p.CommentCount<28 AND u.DownVotes>423 AND u.DownVotes<1887 AND v.CreationDate>'2009-09-10 10:16:58'::timestamp AND v.CreationDate<'2014-05-13 23:31:12'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<14 AND b.Date>'2010-09-10 22:43:45'::timestamp AND b.Date<'2010-10-02 01:28:14'::timestamp;

