/*+ NestLoop(u p ph b)
 NestLoop(u p ph)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 IndexScan(ph)
 IndexScan(b)
 Leading((((u p) ph) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-10-24 15:26:26'::timestamp AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=37 AND p.AnswerCount<=5 AND p.FavoriteCount=1 AND p.CreationDate>='2010-08-19 06:35:02'::timestamp AND p.CreationDate<='2014-09-02 19:08:11'::timestamp AND u.Views=0 AND u.UpVotes>=0 AND u.UpVotes<=148 AND b.Date>='2010-07-27 22:48:47'::timestamp AND b.Date<='2014-09-13 16:49:46'::timestamp;

