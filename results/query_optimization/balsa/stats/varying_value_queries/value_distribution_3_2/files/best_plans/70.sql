/*+ HashJoin(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(p)
 SeqScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-18 AND p.Score<105 AND p.CommentCount>0 AND p.CommentCount<16 AND u.DownVotes>22 AND u.DownVotes<67 AND v.CreationDate>'2009-09-20 17:53:32'::timestamp AND v.CreationDate<'2011-12-18 09:59:27'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<7 AND b.Date>'2010-12-28 12:33:58'::timestamp AND b.Date<'2011-10-28 00:22:10'::timestamp;

