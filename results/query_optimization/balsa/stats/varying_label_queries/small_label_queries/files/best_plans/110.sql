/*+ NestLoop(u v p)
 HashJoin(u v)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading(((u v) p)) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.BountyAmount<=150 AND p.PostTypeId=1 AND p.AnswerCount=0 AND p.CommentCount<=12 AND p.FavoriteCount>=0 AND u.Views<=10 AND u.UpVotes>=0 AND u.CreationDate>='2010-10-12 20:02:01'::timestamp AND u.CreationDate<='2014-08-21 00:20:39'::timestamp;

