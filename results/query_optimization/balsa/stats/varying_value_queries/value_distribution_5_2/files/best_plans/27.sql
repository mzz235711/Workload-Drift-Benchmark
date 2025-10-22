/*+ HashJoin(p v u b)
 NestLoop(u b)
 NestLoop(p v)
 IndexScan(p)
 IndexScan(v)
 IndexScan(u)
 IndexScan(b)
 Leading(((p v) (u b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<172 AND p.CommentCount>12 AND p.CommentCount<38 AND u.DownVotes>361 AND u.DownVotes<1841 AND v.CreationDate>'2009-04-06 11:29:12'::timestamp AND v.CreationDate<'2011-04-04 03:12:06'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2010-08-28 10:35:30'::timestamp AND b.Date<'2014-04-04 05:30:31'::timestamp;

