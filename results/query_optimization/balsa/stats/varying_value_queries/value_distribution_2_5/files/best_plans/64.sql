/*+ NestLoop(v u p b)
 HashJoin(v u p)
 NestLoop(u p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(p)
 IndexScan(b)
 Leading(((v (u p)) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>108 AND p.Score<173 AND p.CommentCount>2 AND p.CommentCount<40 AND u.DownVotes>581 AND u.DownVotes<886 AND v.CreationDate>'2009-11-24 00:21:20'::timestamp AND v.CreationDate<'2011-08-15 00:07:06'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2010-09-03 11:26:27'::timestamp AND b.Date<'2011-02-07 02:31:20'::timestamp;

