/*+ HashJoin(v p b u)
 HashJoin(b u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 SeqScan(b)
 IndexScan(u)
 Leading(((v p) (b u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-5 AND p.Score<60 AND p.CommentCount>2 AND p.CommentCount<40 AND u.DownVotes>639 AND u.DownVotes<1229 AND v.CreationDate>'2009-10-12 23:49:58'::timestamp AND v.CreationDate<'2012-04-13 19:32:36'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2011-09-02 17:54:53'::timestamp AND b.Date<'2013-06-29 03:59:32'::timestamp;

