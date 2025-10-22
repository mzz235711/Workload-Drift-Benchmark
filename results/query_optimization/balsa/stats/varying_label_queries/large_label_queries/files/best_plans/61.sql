/*+ HashJoin(c b p u ph)
 HashJoin(c b p u)
 MergeJoin(b p u)
 HashJoin(p u)
 IndexScan(c)
 IndexScan(b)
 SeqScan(p)
 SeqScan(u)
 SeqScan(ph)
 Leading(((c (b (p u))) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND p.AnswerCount<=11 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-08-30 18:08:43'::timestamp AND ph.CreationDate<='2014-09-02 05:16:21'::timestamp AND b.Date>='2010-08-13 18:25:01'::timestamp AND b.Date<='2014-09-05 19:19:44'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=7 AND u.CreationDate<='2014-08-05 06:51:09'::timestamp;

